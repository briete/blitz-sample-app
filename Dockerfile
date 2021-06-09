FROM node:14

ARG SECRET
ENV SESSION_SECRET_KEY $SECRET

WORKDIR /app
COPY . .
RUN yarn install
RUN yarn blitz prisma generate
RUN yarn build

EXPOSE 3000

CMD yarn start